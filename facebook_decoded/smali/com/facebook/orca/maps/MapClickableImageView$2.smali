.class Lcom/facebook/orca/maps/MapClickableImageView$2;
.super Ljava/lang/Object;
.source "MapClickableImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/maps/MapClickableImageView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/maps/MapClickableImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/orca/maps/MapClickableImageView$2;->a:Lcom/facebook/orca/maps/MapClickableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView$2;->a:Lcom/facebook/orca/maps/MapClickableImageView;

    invoke-static {v0}, Lcom/facebook/orca/maps/MapClickableImageView;->b(Lcom/facebook/orca/maps/MapClickableImageView;)V

    .line 78
    return-void
.end method
