using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public CharacterController controller;
    public float moveSpeed = 6f;
    public float gravity = 9f;

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        float gravityPull = 0;
        if (controller.isGrounded == false)
        {
            gravityPull -= gravity;
        }

        float horizontal = Input.GetAxisRaw("Horizontal");
        float vertical = Input.GetAxisRaw("Vertical");

        Vector3 move = (transform.right*horizontal + transform.forward*vertical).normalized;
        move.y = move.y*gravityPull;
        if (move.magnitude >= 0.1f)
        {
            controller.Move(move*moveSpeed*Time.deltaTime);
        }

    }
}
