.class Lcom/facebook/katana/ui/FbandroidTitleBar$1;
.super Ljava/lang/Object;
.source "FbandroidTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

.field private synthetic b:Lcom/facebook/katana/ui/FbandroidTitleBar;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ui/FbandroidTitleBar;Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/katana/ui/FbandroidTitleBar$1;->b:Lcom/facebook/katana/ui/FbandroidTitleBar;

    iput-object p2, p0, Lcom/facebook/katana/ui/FbandroidTitleBar$1;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/katana/ui/FbandroidTitleBar$1;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    iget-object v1, p0, Lcom/facebook/katana/ui/FbandroidTitleBar$1;->b:Lcom/facebook/katana/ui/FbandroidTitleBar;

    invoke-static {v1}, Lcom/facebook/katana/ui/FbandroidTitleBar;->a(Lcom/facebook/katana/ui/FbandroidTitleBar;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;->a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;)V

    .line 75
    return-void
.end method
