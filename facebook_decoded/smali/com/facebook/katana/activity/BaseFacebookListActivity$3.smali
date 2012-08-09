.class Lcom/facebook/katana/activity/BaseFacebookListActivity$3;
.super Ljava/lang/Object;
.source "BaseFacebookListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/BaseFacebookListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/BaseFacebookListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity$3;->a:Lcom/facebook/katana/activity/BaseFacebookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity$3;->a:Lcom/facebook/katana/activity/BaseFacebookListActivity;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/view/View;IJ)V

    .line 205
    return-void
.end method
