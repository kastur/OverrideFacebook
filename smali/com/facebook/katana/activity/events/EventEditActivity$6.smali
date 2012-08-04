.class Lcom/facebook/katana/activity/events/EventEditActivity$6;
.super Ljava/lang/Object;
.source "EventEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/events/EventEditActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/events/EventEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventEditActivity$6;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity$6;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/events/EventEditActivity;->openTagFriends(Landroid/view/View;)V

    .line 138
    return-void
.end method
