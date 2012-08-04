.class Lcom/facebook/katana/activity/messages/MessageComposeActivity$4;
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
    .line 149
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$4;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$4;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->setResult(I)V

    .line 154
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$4;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->finish()V

    .line 155
    return-void
.end method
