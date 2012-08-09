.class Lcom/facebook/katana/ComposerActivity$7;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$7;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 796
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$7;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/ComposerActivity;->openTimeSelector(Landroid/view/View;)V

    .line 797
    return-void
.end method
