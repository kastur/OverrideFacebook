.class Lcom/facebook/katana/activity/stream/StreamAdapter$1;
.super Ljava/lang/Object;
.source "StreamAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/stream/StreamAdapter$StreamAdapterListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/stream/StreamAdapter;Lcom/facebook/katana/activity/stream/StreamAdapter$StreamAdapterListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p2, p0, Lcom/facebook/katana/activity/stream/StreamAdapter$1;->a:Lcom/facebook/katana/activity/stream/StreamAdapter$StreamAdapterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter$1;->a:Lcom/facebook/katana/activity/stream/StreamAdapter$StreamAdapterListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost;

    invoke-interface {v1, v0}, Lcom/facebook/katana/activity/stream/StreamAdapter$StreamAdapterListener;->a(Lcom/facebook/katana/model/FacebookPost;)V

    .line 91
    return-void
.end method
