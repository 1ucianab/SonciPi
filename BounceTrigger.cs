using System.Collections;
using System.Collections.Generic;
using UnityEngine;



public class AddBounce : MonoBehaviour
    {
    // Start is called before the first frame update
    public PhysicMaterial physicMaterial;

    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    private void OnTriggerEnter(Collider other)
    {
        // Use the Console to understand what your code is doing
        Debug.Log("HIT DETECTED!");

        GameObject.FindWithTag("Player").GetComponent<Collider>().material = physicMaterial;
    }
}
