using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Grow : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        Debug.Log("Hello World");
        // Set the x,y,z rate of change here in the code instead of the Inspector
        scaleChange = new Vector3(0.005f, 0.005f, 0.005f);

    }

    // Update is called once per frame
    void Update()
    {
        
    }
    private void OnTriggerEnter(Collider other)
    {
        // Use the Console to understand what your code is doing
        Debug.Log("HIT DETECTED!");

        // Remove any material already on the "lisa" GameObject then set the color to be green
        GameObject.FindWithTag("fall").GetComponent<Renderer>().material = null;
        GameObject.FindWithTag("fall").GetComponent<...>().material = ...;
        //GameObject.FindWithTag("plat").GetComponent<Renderer>().material.color = grn;
    }
}
