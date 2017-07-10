//
//  ViewController.swift
//  粒子动画
//
//  Created by MrHuang on 17/7/10.
//  Copyright © 2017年 Mrhuang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        // 1.创建发射器
        let emtitter = CAEmitterLayer()
        //创建发射器的发射位置
      emtitter.emitterPosition = CGPoint(x: self.view.bounds.width * 0.5, y: -60)
//        emtitter.emitterPosition = CGPoint(x: self.view.bounds.width * 0.5, y: self.view.bounds.height - 20)
        //开启三维效果
        emtitter.preservesDepth = true
        
        // 2.创建粒子cell 并设置相关属性
        let cell = CAEmitterCell()
        // 2.1设置粒子速度以及相关的速度范围
        cell.velocity = 150
        cell.velocityRange = 100
        // 2.2设置粒子大小 及 缩小范围
        cell.scale = 0.7
        cell.scaleRange = 0.3
        // 2.3设置粒子的方向 emissionLongitude经度 则表明粒子是竖向的 emissionLatitude纬度 则表明粒子是横向
        cell.emissionLongitude = CGFloat(M_PI_2)   
        cell.emissionRange = CGFloat(M_PI_2 / 2)
//        cell.emissionLongitude = CGFloat(-M_PI_2)
//        cell.emissionRange = CGFloat(M_PI_2/6)
        // 2.4 粒子的存活时间
        cell.lifetime = 6
        cell.lifetimeRange = 3
        
        // 2.5 粒子的旋转
          cell.spin = CGFloat(M_PI_2)
        cell.spinRange = CGFloat(M_PI_2 / 2)
        // 2.6 设置粒子每秒弹出的个数
        cell.birthRate = 10
        // 2.7 设置粒子展示的图片
        cell.contents = UIImage(named:"good2_30x30_@3x")?.cgImage
        // 3 将粒子添加到发射器中
        emtitter.emitterCells = [cell]
        
        // 将发射器layer 添加到父layer中
        view.layer .addSublayer(emtitter)
        
        
    }
   

}

