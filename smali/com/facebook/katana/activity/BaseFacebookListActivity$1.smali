.class Lcom/facebook/katana/activity/BaseFacebookListActivity$1;
.super Ljava/lang/Object;
.source "BaseFacebookListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/BaseFacebookListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/BaseFacebookListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity$1;->a:Lcom/facebook/katana/activity/BaseFacebookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity$1;->a:Lcom/facebook/katana/activity/BaseFacebookListActivity;

    invoke-virtual {v0, p3, p4, p5}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(IJ)Z

    move-result v0

    return v0
.end method
