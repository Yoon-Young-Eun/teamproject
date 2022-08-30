<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="../css/pay1.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <title>Document</title>


  <script language="javascript">
   
    function agreeCheck(frm)
    {
       if (frm.button1.disabled==true)
        frm.button1.disabled=false
        
       else
        frm.button1.disabled=true
       
    }
    
    </script>
  
</head>
<body>

  <div class="wrap">
    <div class="wrap1">
<!-- haeder ���� -->
<header>
   
  <div class = "top-menu-wrapper">
   
     <h1>���</h1>
     <nav class = "top-menu">
        <ul class = "top-list"> 
           <li><a href = "#">�α���</a></li>
           <li><a href = "#">ȸ������</a></li>
           <li><a href = "#">����������</a></li>
           <li><a href = "#">������</a></li>
        </ul>
     </nav>
  
</div>
</header>
<!-- haeder �� -->
<nav id="cbp-hrmenu" class="cbp-hrmenu">
<ul>
   <li>
      <a href="#">ó���̼���?</a>
      <div class = "cbp-hrsub">
         <div class="cbp-hrsub-inner">
            <div>
               <h4>�̿���</h4>
               <ul>
                  <li><a href="#">�ֹ����</a></li>
                  <li><a href="#">���Ź��</a></li>
               </ul>
            </div>
         </div><!-- hrsub inner -->
      </div><!-- hrsub -->
   </li>
   <li>
      <a href="#">���� ����</a>
      <div class = "cbp-hrsub">
         <div class="cbp-hrsub-inner">
            <div>
               <h4>���� ����</h4>
               <ul>
                  <li><a href="#">����</a></li>
               </ul>
            </div>
         </div><!-- hrsub inner -->
      </div><!-- hrsub -->
   </li>
   <li>
      <a href="#">��Ź����</a>
      <div class = "cbp-hrsub">
         <div class="cbp-hrsub-inner">
            <div>
               <h4>�Ϲ� Ŭ����</h4>
               <ul>
                  <li><a href="#">�Ϲ��Ƿ�</a></li>
                  <li><a href="#">���̼���</a></li>
                  <li><a href="#">�̺�</a></li>
                  <li><a href="#">�ȭ</a></li>
               </ul>
               <h4>Ư�� Ŭ����</h4>
               <ul>
                  <li><a href="#">�Ϲ� Ŭ����</a></li>
                  <li><a href="#">Ư�� Ŭ����</a></li>
               </ul>
            </div>
            <div>
               <h4>��</h4>
               <ul>
                  <li><a href="#">�ƿ�����</a></li>
                  <li><a href="#">����</a></li>
                  <li><a href="#">����/����/����</a></li>
               </ul>
            </div>
            
         </div><!-- hrsub inner -->
      </div><!-- hrsub -->
   </li>
   <li>
      <a href="#">ȸ�� �Ұ�</a>
      <div class = "cbp-hrsub">
         <div class="cbp-hrsub-inner">
            <div>
               <h4>�������</h4>
               <ul>
                  <li><a href="#">�λ�</a></li>
                  <li><a href="#">ȸ��Ұ�</a></li>
               </ul>
            </div>
         </div><!-- hrsub inner -->
      </div><!-- hrsub -->
   </li>
</ul>
<script>
var cbpHorizontalMenu = (function() {
 
 var $listItems = $( '#cbp-hrmenu > ul > li' ),
     $menuItems = $listItems.children( 'a' ),
     $body = $( 'body' ),
     current = -1;

 function init() {
     $menuItems.on( 'click', open );
     $listItems.on( 'click', function( event ) { event.stopPropagation(); } );
 }

 function open( event ) {

     if( current !== -1 ) {
         $listItems.eq( current ).removeClass( 'cbp-hropen' );
     }

     var $item = $( event.currentTarget ).parent( 'li' ),
         idx = $item.index();

     if( current === idx ) {
         $item.removeClass( 'cbp-hropen' );
         current = -1;
     }
     else {
         $item.addClass( 'cbp-hropen' );
         current = idx;
         $body.off( 'click' ).on( 'click', close );
     }

     return false;

 }

 function close( event ) {
     $listItems.eq( current ).removeClass( 'cbp-hropen' );
     current = -1;
 }

 return { init : init };

})();

$(function() {
         cbpHorizontalMenu.init();
});

</script>
</nav>

<div class="main">
  <div class="space_left"></div>
  <div class="paymainBox">
    <div class="paymain_text">
      ��Ź ���� �����ϱ�
    </div>
    
    <div class="paymain_text1">
      ���ǻ���
    </div>
    <div class="paymain_text2">
      <ol id="ol1">
        <li>�����Ͻ� <span id="text_1">��¥�� ���� ���� ������ �Ұ���</span>�մϴ�.</li>
        <li>�����Ͻ� �����Ͽ� ���� ������ �湮�Ͻô� <span id="text_2">��������
          ��Ź���� �������ּ���!</span></li>
        <li>��Ź ��Ȳ�� ���� 1~2�� ���⿡ ��۵ǰų� ������ �� �ִ� ��
          ���غ�Ź�帳�ϴ�.</li>
        <li>�ָ� �� �����Ͽ��� ��Ź���񽺰� ����� ������ ,
          ����,��� ���� ���� ������� �ʴ� �� ���� ��Ź�帳�ϴ�.</li>
        <li>��Ź���� ���ŵ� ���Ŀ��� <span id="text_3">���/ȯ��</span>�� �Ұ����մϴ�.</li>
        </ol>
    </div>
    
    <div class="paymain_text3">
      Ư����Ź
    </div>
    <div class="paymain_text4">
      Ư����Ź�̶� ?<br>
      ���̳� ���������� ���� ������ ���� ��� �����ũ�������ε� ���Ű� �ȵǴ� �� ����<br>
      ������,�͹�,��ũ ��� ���� �Ϲݼ�Ź���� ���� ������ �ʴ� �������� Ư���۾��� ���ؼ�<br>
      ������ �帮�� ��Ź ���� �Դϴ�.
    </div>
    <div class="paymain_text5">
      <span id="text_4">Ư����Ź�� ��� �Ϲݼ�Ź�� �ٸ��� ��Ź���� ���� ���� �� ��Ź��ݿ� ���� ������<br>
      �޾� ���� �� ��Ź�� �����ϼž� �մϴ�.</span>
    </div>
    <div class="paymain_link1">
      <a href="#" id="a_link">[�ڼ���]</a>
    </div>
    
    <div class="paymain_text6">
      �Ϲݼ�Ź
    </div>
    <div class="paymain_text7">
      �Ϲݼ�Ź�̶� ?<br>
      ���� �� ��Ź����� ���� �з� �� �������� �� ��Ź�� �ջ�ȣ<br>
      ��Ź�� ���� /������������ üũ/ �ٸ��� ������ ��ġ�� ��Ź���� �Դϴ�.
      
    </div>
    <div class="paymain_text8">
      <span id="text_5">�Ϲݼ�Ź�� ��� ����/��Ź���� ������ ���� ������ �ݾ׿�
        ���缭 �ݾ��� å���Ǹ� ,<br>
         Ư����Ź�� �ٸ��� ������ ���� �����ŵ� �˴ϴ�.
      </span>
    </div>
    <div class="paymain_link2">
      <a href="#" id="a_link">[�ڼ���]</a>
    </div>
    
    <form name="form">
    <div class="paymain_text9">
      <input type="checkbox" id="checkbox1" onClick="agreeCheck(this.form)">
       <span id="span123">�����ǻ����� �����Ͽ��� ���񽺸� ��û�մϴ�.</span>
    </div>
    
    <div class="paymain_button">
      <div class="paymain_button1">
      <input type="button" id="button1" value="Ȯ��" onclick="location.href='pay2.html'" disabled></input>
    </div>
    <div class="paymain_button1">
      <input type="button" id="button2" onclick="location.href='main.html'" value="���">
    </div>
    </div>
  </form>
  
  </div>
  <div class="space_right"></div>
  </div> 


</div>
</div> 


<!-- ������ ���� -->




</body>
<footer>
   <div class = "bottom-menu">
      <ul>
         <li><a href="#">��������ó����ħ</a></li>
         <li><a href="#">�̿���</a></li>
         <li><a href="#">�Ƿ����� �̿���</a></li>
      </ul>
   </div>
   <div class = "bottom-info">
      <h2>���</h2>
      <div class = "bottom-info-list">
         <span>��ȣ�� : ��Ź�� ����</span>
         <span>��ǥ��ȭ : 02-000-0000</span>
         <span>����� ��ȣ : no.00000000000</span>   
      </div>
   </div>
</footer>
</html>