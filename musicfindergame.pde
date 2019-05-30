musicTree tree= new musicTree();
TreeNode current;
Scenes sc;

boolean introSlide=true;
boolean one=false;
boolean two = false;
boolean three=false;
boolean four=false;
boolean five=false;
boolean six=false;
boolean seven=false;
boolean eight=false;
String s="";
PImage photo;

void setup() {
  background(0);
  size(800, 800);
  current=tree.buildTree();
  photo = loadImage("whitenote.jpg");
}

void draw() {

  background(0);
  fill(255);
  textSize(32);
  text("Welcome to Music Finder Game", 160, 100);
  textSize(20);
  text("Answer the yes or no questions and find which song you should listen to", 46, 150);
  text("Press the y key", 552, 725);
  text("Yes", 612, 700);
  text("Press the n key", 100, 725);
  text("No", 160, 700);
  text("Press y to start", 330, 200);
    image(photo, 185, 235);
}

void changeScenes() {
   Scenes sc=new Scenes();
  if (introSlide==true) {
    sc.scene0();
  } else if (one==true) {
    sc.scene1();
  } else if (two==true) {
    sc.scene2();
  } else if (three==true) {
    sc.scene3();
  } else if (four==true) {
    sc.scene4();
  } else if (five==true) {
    sc.scene5();
  } else if (six==true) {
    sc.scene6();
  } else if (seven==true) {
    sc.scene7();
  } else if (eight==true) {
    sc.scene8();
  } else {
    introSlide=true;
  }
}

void keyPressed() {
  if (introSlide==true) {
    if (keyCode==78) {
      background(0);
      s=(String)current.getLeft().getValue();
      text(s, 120, 150);
      println(s);
      
      if (s.equals("You got: Travis Scott - Goosebumps (rap)")) {
        one=true;
        introSlide=false;
      }
      
      if (s.equals("You got: Martin Garrix - In the Name of Love (edm)")) {
        two=true;
        introSlide=false;
        println("s");
      }
      
      if (s.equals("You got: AC/DC - Back in Black (rock)")) {
        three=true;
        introSlide=false;
        println("s");
      }
      
      if (s.equals("You got: Jonas Brothers - Sucker (pop)")) {
        four=true;
        introSlide=false;
        println("s");
      }
      
      if (s.equals("You got: David Brubeck - Take Five (jazz)")) {
        five=true;
        introSlide=false;
        println("s");
      }
      
      if (s.equals("You got: Beethoven - Fur Elise (classical)")) {
        six=true;
        introSlide=false;
        println("s");
      }
      
      if (s.equals("You got: AC/DC - Back in Black (rock)")) {
        seven=true;
        introSlide=false;
        println("s");
      }
      
      if (s.equals("You got: AC/DC - Back in Black (rock)")) {
        eight=true;
        introSlide=false;
        println("s");
      } else {
        current=current.getLeft();
      }
    }
    
    if (keyCode==89) {
      background(0);

      s=(String)current.getRight().getValue();

      text(s, 120, 150);
      System.out.println(s);
      if (s.equals("You got: Travis Scott - Goosebumps (rap)")) {
        one=true;
        introSlide=false;
      }
      if (s.equals("You got: Martin Garrix - In the Name of Love (edm)")) {
        two=true;
        introSlide=false;
        println("Thanks for playing!");
      }
      if (s.equals("You got: AC/DC - Back in Black (rock)")) {
        three=true;
        introSlide=false;
        println("Thanks for playing!");
      }
      if (s.equals("You got: Jonas Brothers - Sucker (pop)")) {
        four=true;
        introSlide=false;
        println("Thanks for playing!");
      }
      if (s.equals("You got: David Brubeck - Take Five (jazz)")) {
        five=true;
        introSlide=false;
        println("Thanks for playing!");
      }
      if (s.equals("You got: Beethoven - Fur Elise (classical)")) {
        six=true;
        introSlide=false;
        println("Thanks for playing!");
      }
      if (s.equals("You got: AC/DC - Back in Black (rock)")) {
        seven=true;
        introSlide=false;
        println("Thanks for playing!");
      }
      if (s.equals("You got: AC/DC - Back in Black (rock)")) {
        eight=true;
        introSlide=false;
        println("Thanks for playing!");
      }  else {
        current=current.getRight();
      }
    }
   
  }
}

class musicTree {
  private TreeNode root;
  private TreeNode current;
  public musicTree() {
    root=null;
  }
  
  TreeNode buildTree() {
    root=(new TreeNode("test"));
    root.setLeft(new TreeNode("Do you like music with singing?"));
    root.setRight(new TreeNode("Do you like music with singing?"));
    root.getLeft().setLeft(new TreeNode("Do you like music with a lot of bass?"));
    root.getLeft().setRight(new TreeNode("Do you like music with a lot of bass?"));
    root.getRight().setLeft(new TreeNode("Do you like spending time in coffee shops?"));
    root.getRight().setRight(new TreeNode("Do you like music with a lot of bass?"));
    root.getLeft().getLeft().setRight(new TreeNode("You got: Beethoven - Fur Elise (classic)"));
    root.getLeft().getLeft().setLeft(new TreeNode("You got: Beethoven - Fur Elise (classic)"));
    root.getLeft().getRight().setLeft(new TreeNode("Do you like to listen to oldies music?"));
    root.getLeft().getRight().setRight(new TreeNode("Do you like to listen to rap?"));
    root.getRight().getLeft().setLeft(new TreeNode("You got: Beethoven - Fur Elise (classical)"));
    root.getRight().getLeft().setRight(new TreeNode("You got: Dave Bruback - Take Five (jazz)"));
    root.getRight().getRight().setLeft(new TreeNode("Do you like to listen to oldies music?"));
    root.getRight().getRight().setRight(new TreeNode("Do you like to listen to rap?"));
    root.getLeft().getLeft().getLeft().setLeft(new TreeNode("Thanks for playing!"));
    root.getLeft().getLeft().getLeft().setRight(new TreeNode("Thanks for playing!"));
    root.getLeft().getRight().getRight().setLeft(new TreeNode("You got: Martin Garrix - In the Name of Love (edm)"));
    root.getLeft().getRight().getRight().setRight(new TreeNode("You got: Travis Scott - Goosebumps (rap)"));
    root.getRight().getRight().getLeft().setRight(new TreeNode("You got: AC/DC - Back in Black (rock)"));
    root.getRight().getRight().getLeft().setLeft(new TreeNode("You got: Jonas Brother - Sucker (pop)"));
    root.getRight().getRight().getRight().setRight(new TreeNode("You got: Travis Scott - Goosebumps (rap)"));
    root.getRight().getRight().getRight().setLeft(new TreeNode("You got: Martin Garrix - In the Name of Love (edm)"));
    current=root;
    return current;
  }

  public String toString() {
    return ""+ root;
  }
}
public interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
public class TreeNode implements Treeable
{
  private Comparable treeNodeValue;
  private TreeNode leftTreeNode;
  private TreeNode rightTreeNode;

  public TreeNode( )
  {
    treeNodeValue = null;
    leftTreeNode = null;
    rightTreeNode = null;
  }

  public TreeNode(Comparable value)
  {
    treeNodeValue = value;
    leftTreeNode = null;
    rightTreeNode = null;
  }

  public TreeNode(Comparable value, TreeNode left, TreeNode right)
  {
    treeNodeValue = value;
    leftTreeNode = left;
    rightTreeNode = right;
  }

  public Comparable getValue()
  {
    return treeNodeValue;
  }

  public TreeNode getLeft()
  {
    return leftTreeNode;
  }

  public TreeNode getRight()
  {
    return rightTreeNode;
  }

  public void setValue(Comparable value)
  {
    treeNodeValue = value;
  }

  public void setLeft(Treeable left)
  {
    leftTreeNode = (TreeNode)left;
  }

  public void setRight(Treeable right)
  {
    rightTreeNode = (TreeNode)right;
  }
}

public class Scenes {
  public Scenes() {
  }
  void scene0() {
    text("scene0", 200, 200);
  }
  void scene1() {
    text("scene1", 200, 200);
  }
  void scene2() {
    text("scene2", 200, 200);
  }
  void scene3() {
    text("scene3", 200, 200);
  }
  void scene4() {
    text("scene4", 200, 200);
  }
  void scene5() {
    text("scene5", 200, 200);
  }
  void scene6() {
    text("scene6", 200, 200);
  }
  void scene7() {
    text("scene7", 200, 200);
  }
  void scene8() {
    text("scene8", 200, 200);
  }
}
