.class Lcom/facebook/katana/activity/messages/MessageComposeActivity$6;
.super Ljava/lang/Object;
.source "MessageComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$6;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$6;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    invoke-static {v1, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->b(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Lcom/facebook/katana/model/FacebookProfile;)V

    .line 183
    return-void
.end method
