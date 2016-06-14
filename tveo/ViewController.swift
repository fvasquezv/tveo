//
//  ViewController.swift
//  tveo
//
//  Created by Fabian Vasquez on 14-06-16.
//  Copyright © 2016 Fabian Vasquez. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func verCanal( url:String ) {
        let videoUrl = NSURL(string: url)
        playerView = AVPlayer(URL: videoUrl!)
        playerViewController.player = playerView
        
        self.presentViewController(playerViewController, animated: true ) {
            self.playerViewController.player?.play()
        }

    }

    @IBAction func pinguino(sender: AnyObject) {
        let url : String = "http://streaming.elpinguino.com:1935/live/pinguinotv_720p/playlist.m3u8"
        verCanal(url)
    }
    
    @IBAction func cdoHd(sender: AnyObject) {
        let url : String = "http://wow2.cl.digitalproserver.com/cdo/cdovivo/cdo.smil/chunklist_w913906597_b1064000.m3u8"
        verCanal(url)
    }
   
    @IBAction func canalTrece(sender: AnyObject) {
        let url: String = "http://13.live.cdn.cl/13hddesktop/13hd-1250.m3u8"
        verCanal(url)
    }

    @IBAction func chvButton(sender: AnyObject) {
        let url:String = "http://live.hls.http.chv.ztreaming.com/chvhd/chvHi.m3u8"
        verCanal(url);
    }
    @IBAction func tvnBtn(sender: AnyObject) {
        let url : String = "http://tvn-vod.mdstrm.com/tvn-live/_definst_/smil:7cb6048ff45cb5cdf7f5fed828597fd1/chunklist_b1500000.m3u8"
        verCanal(url)
    }
    
    @IBAction func ucvButton(sender: AnyObject) {
        let url : String = "http://movilstream.digitalproserver.com/ucvtv/ucvtv.smil/chunklist-b1248000.m3u8"
        verCanal(url)
    }
    
    @IBAction func ccButton(sender: AnyObject) {
        let url:String = "http://cluster.13cmovil.ztreaming.com/13cm/grpz13c/playlist.m3u8"
        verCanal(url)
    
    }
    
    @IBAction func itvButton(sender: AnyObject ){
        let url:String = "http://wow2.cl.digitalproserver.com/itv/itvvivo/livestream1/playlist.m3u8"
        verCanal(url)
    }

    @IBAction func campusButton(sender: AnyObject) {
        let url:String = "http://movilstream.digitalproserver.com/campustv/campustvvivo/livestream1/playlist.m3u8"
        verCanal(url)
    }
    
    @IBAction func contButton(sender: AnyObject) {
        let url:String = "http://wow2.cl.digitalproserver.com/contivisionhd/contivisionhdvivo/contivisionhd.smil/chunklist_w1162159593_b1496000.m3u8"
        verCanal(url)
    }
    
    @IBAction func tvuButton(sender: AnyObject){
        let url:String = "http://movilstream.digitalproserver.com/tvu/tvuvivo/livestream1/playlist.m3u8"
        verCanal(url)
    }
    
    @IBAction func megaButton(sender: AnyObject){
        let url:String = "http://mdstrm.com/live-stream-playlist/53d2c1a32640614e62a0e000.m3u8"
        verCanal(url)
    }
    
}

