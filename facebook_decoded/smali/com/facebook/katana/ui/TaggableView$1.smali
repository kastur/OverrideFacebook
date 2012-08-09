.class Lcom/facebook/katana/ui/TaggableView$1;
.super Ljava/lang/Object;
.source "TaggableView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ui/TaggableView;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ui/TaggableView;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/katana/ui/TaggableView$1;->a:Lcom/facebook/katana/ui/TaggableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView$1;->a:Lcom/facebook/katana/ui/TaggableView;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/TaggableView;->a()V

    .line 58
    return-void
.end method
