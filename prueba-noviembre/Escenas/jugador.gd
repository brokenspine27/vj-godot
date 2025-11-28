extends CharacterBody2D
@onready var personaje: AnimatedSprite2D = $AnimatedSprite2D


const SPEED = 100.0
const JUMP_VELOCITY = -250.0
const PUSH_FORCE = 1400
#constante para número máximo de saltos
const MAX_JUMPS = 2 

@export var grabbable_object: RigidBody2D = null
@export var can_grab: bool = false
var object_grabbed: bool = false

#variable para contar saltos
var jumps_number = 0
var union: PinJoint2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	#rama de estar en el suelo	
	else:
		jumps_number = 0

	# Handle jump.
	if Input.is_action_just_pressed("saltar") and jumps_number < MAX_JUMPS:
		velocity.y = JUMP_VELOCITY
		#incrementa contador de saltos
		jumps_number += 1
		
	
	
	if Input.is_action_just_pressed("agarrar"):
		if can_grab:
			$PinJoint2D.node_a = get_path()
			$PinJoint2D.node_b = grabbable_object.get_path()
			print("agarrado")
			object_grabbed = true
	
	if Input.is_action_just_released("agarrar"):
		if can_grab:
			$PinJoint2D.node_a = ""
			$PinJoint2D.node_b = ""
			print("soltado")
			object_grabbed = false
			
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("izquierda", "derecha")
	if direction:
		personaje.play("run")
		velocity.x = direction * SPEED
		if direction > 0:
			# va a la derecha
			personaje.flip_h = false
		elif direction < 0:
			# Va a la izquierda
			personaje.flip_h = true
			
	else:
		personaje.play("Idle")
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	if self.move_and_slide(): 
		for i in self.get_slide_collision_count():
			var col = self.get_slide_collision(i)
			if col.get_collider() is RigidBody2D:
				col.get_collider().apply_central_force(col.get_normal() * -PUSH_FORCE)
