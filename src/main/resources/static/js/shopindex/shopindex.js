//店铺首页分页、全部分页
function dividepage(shopid,pagenow){
			var pagesize;
			 $.ajax({
		         type: "GET",
		         url: "/bookEX/shop/page",
		         data: {shopid:shopid, pagenow:pagenow},
		         dataType: "json",
		         success: function(console){
		        	 var books=console.books;
		        	 var shop=console.shop;
		        	 var user=console.user;
		        	 var page=console.pagemap;
		        	  var result="";
		        	  var resultpage="";
		        	  $("#display").html("");
		        	  $("#pagedisplay").html("");
		        			  for(var i=0;i<books.length;i++)
		        				  {
		        				result+="<div class=col-md-3>"+
									"<div class=thumbnail>"+
									"<a href='/bookEX/shop/detail/?isbn="+books[i].isbn+"&owner="+books[i].owner+"&ownertype="+books[i].ownertype+"'"+
											"target=_blank style='text-decoration: none;cursor:pointer;'>"+
											"<img alt=300x200 src=/img/book/"+books[i].bookpic+" width='200px' height='200px' /></a>"+
										"<div class=caption>"+
											"<a href='/bookEX/shop/detail/?isbn="+books[i].isbn+"&owner="+books[i].owner+"&ownertype="+books[i].ownertype+"'"+
												"target=_blank style='text-decoration: none;cursor:pointer;'><h3>"+books[i].bookname+"</h3></a>"+
											"<p>"+books[i].author+"</p>"+
											"<p>"+books[i].press+"</p>"+
											"<p>￥："+books[i].bookprice+"</p>"+
											"<p>";
		        				if(user==1)
		        					{
										result+="<a class=btn onclick='BuyItRightNow("+books[i].isbn+","+books[i].owner+","+books[i].nowcount+")'" +
												"style='text-decoration: none;cursor:pointer;'>直接购买</a>"+
													"<a class=btn onclick='add2Cart("+books[i].isbn+","+books[i].owner+","+books[i].nowcount+")'"+
														"style='text-decoration: none;cursor:pointer;'>加入购物车</a>";
		        					}else{
		        						result+="<a data-toggle=modal data-target='#myModal1'"+
														"style='text-decoration: none;cursor:pointer;'>直接购买</a>&nbsp;&nbsp;&nbsp;"+
													"<a data-toggle=modal data-target='#myModal1'"+
													"	style='text-decoration: none;cursor:pointer;'>加入购物车</a>";
		        					}
											result+="</p>"+
										"</div>"+
									"</div>"+
								"</div>" ;       				  
		        				  };
		        				  resultpage+="<ul class=pagination>";
		        				  if(page.pagenow==1)
		        					  {
		        					  resultpage+="<li><a>&laquo;</a></li>";
		        					  }else{
		  							resultpage+="<li><a onclick='dividepage("+shop.shopid+","+(page.pagenow-1)+")' style='text-decoration: none;cursor:pointer;'>&laquo;</a></li>";
		        					  }
		        				  for(var i=0;i<page.pagecount;i++)
		        					  {
		        					  resultpage+="<li><a onclick='dividepage("+shop.shopid+","+(i+1)+")' style='text-decoration: none;cursor:pointer;'>"+(i+1)+"</a></li>";
		        					  };
		        				if(page.pagenow==page.pagecount)
		        					{
		        					resultpage+="<li><a>&raquo;</a></li>";
		        					}else
		        						{
		        						resultpage+="<li><a onclick='dividepage("+shop.shopid+","+(parseInt(page.pagenow)+1)+")' style='text-decoration: none;cursor:pointer;'>&raquo;</a></li>";
		        						}
		        				resultpage+="</ul>";
		        				  $("#display").append(result);
		        				  $("#pagedisplay").append(resultpage);
		        				  
		                  },
		         error:function(){
		              alert("数据加载失败");
		             }
		     });
			}


