.class Lcom/facebook/orca/share/ShareView$1;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/share/ShareView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/share/ShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/orca/share/ShareView$1;->a:Lcom/facebook/orca/share/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView$1;->a:Lcom/facebook/orca/share/ShareView;

    invoke-static {v0}, Lcom/facebook/orca/share/ShareView;->a(Lcom/facebook/orca/share/ShareView;)V

    .line 98
    return-void
.end method
