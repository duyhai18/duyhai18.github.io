<div class="header_bottom">
		<div class="header_bottom_left">
			<div class="section group">
				<?php
				$getLastestLeu = $product->getLastestLeu();
				if($getLastestLeu){
					while($resultleu = $getLastestLeu->fetch_assoc()){
				 ?>
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php"> <img src="admin/uploads/<?php echo $resultleu['image'] ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Lều</h2>
						<p><?php echo $fm->textShorten($resultleu['productName'],35) ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultleu['productId'] ?>">Xem chi tiết</a></span></div>
				   </div>
			   </div>
			   <?php
				}}
			    ?>

			    <?php
				$getLastestBalo = $product->getLastestBalo();
				if($getLastestBalo){
					while($resultbalo = $getLastestBalo->fetch_assoc()){
				 ?>			
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						  <a href="details.php"><img src="admin/uploads/<?php echo $resultbalo['image'] ?>" alt="" /></a>
					</div>
					<div class="text list_2_of_1">
						  <h2>Balo</h2>
						  <p><?php echo $fm->textShorten($resultbalo['productName'],35) ?></p>
						  <div class="button"><span><a href="details.php?proid=<?php echo $resultbalo['productId'] ?>">Xem chi tiết</a></span></div>
					</div>
				</div>
				<?php
				}}
			    ?>
			</div>
			<div class="section group">
				<?php
				$getLastestXeng = $product->getLastestXeng();
				if($getLastestXeng){
					while($resultxeng = $getLastestXeng->fetch_assoc()){
				 ?>		
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php"> <img src="admin/uploads/<?php echo $resultxeng['image'] ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Xẻng đa năng</h2>
						<p><?php echo $fm->textShorten($resultxeng['productName'],35) ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultxeng['productId'] ?>">Xem chi tiết</a></span></div>
				   </div>
			   </div>
			   <?php
				}}
			    ?>

				<?php
				$getLastestMubh = $product->getLastestMubh();
				if($getLastestMubh){
					while($resultmubh = $getLastestMubh->fetch_assoc()){
				 ?>		
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php"> <img src="admin/uploads/<?php echo $resultmubh['image'] ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Mũ bảo hiểm</h2>
						<p><?php echo $fm->textShorten($resultmubh['productName'],35) ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultmubh['productId'] ?>">Xem chi tiết</a></span></div>
				   </div>
			   </div>
			   <?php
				}}
			    ?>			
			</div>
		  <div class="clear"></div>
		</div>
			 <div class="header_bottom_right_images">
		   <!-- FlexSlider -->
             
			<section class="slider">
				  <div class="flexslider">
					<ul class="slides">
						<?php 
						$get_slider = $product->show_slider();
						if ($get_slider) {
							while ($result_slider = $get_slider->fetch_assoc()) {
								# code...
							
						 ?>
						<li><img src="admin/uploads/<?php echo $result_slider['slider_image'] ?>" alt=""/></li>
						<?php 
						}
						}
						 ?>
				    </ul>
				  </div>
	      </section>
<!-- FlexSlider -->
	    </div>
	  <div class="clear"></div>
  </div>