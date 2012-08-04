.class Lcom/facebook/orca/maps/MapClickableImageView$1;
.super Ljava/lang/Object;
.source "MapClickableImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/maps/MapClickableImageView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/maps/MapClickableImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/orca/maps/MapClickableImageView$1;->a:Lcom/facebook/orca/maps/MapClickableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView$1;->a:Lcom/facebook/orca/maps/MapClickableImageView;

    invoke-static {v0}, Lcom/facebook/orca/maps/MapClickableImageView;->a(Lcom/facebook/orca/maps/MapClickableImageView;)V

    .line 55
    return-void
.end method
