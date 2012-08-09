.class Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;
.super Lcom/facebook/katana/ViewHolder;
.source "PhotosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/katana/ViewHolder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/PhotosAdapter;Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const v0, 0x7f0801fd

    invoke-direct {p0, p2, v0}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->b:Z

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->b:Z

    .line 60
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->b:Z

    return v0
.end method
