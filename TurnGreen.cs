using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class turnGreen : MonoBehaviour
{
    private Color grn;

    // Start is called before the first frame update
    void Start()
    {
        // To use any color just Google the (R,G,B,A) value
        grn = new Color32(127, 255, 0, 255);
    }

    // Update is called once per frame
    void Update()
    {

    }

    // Upon collision with another GameObject, another GameObject will turn green
    private void OnTriggerEnter(Collider other)
    {
        // Use the Console to understand what your code is doing
        Debug.Log("HIT DETECTED!");

        // Remove any material already on the "lisa" GameObject then set the color to be green
        GameObject.FindWithTag("duh").GetComponent<Renderer>().material = null;
        GameObject.FindWithTag("duh").GetComponent<Renderer>().material.color = Color.green;
        //GameObject.FindWithTag("plat").GetComponent<Renderer>().material.color = grn;
    }
}
// Here's where you can find other ways you can change the renderer of any object
// https://docs.unity3d.com/ScriptReference/Renderer.html
