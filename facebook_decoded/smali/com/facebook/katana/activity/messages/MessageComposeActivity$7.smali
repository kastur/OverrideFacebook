.class Lcom/facebook/katana/activity/messages/MessageComposeActivity$7;
.super Ljava/lang/Object;
.source "MessageComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$7;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$7;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->setResult(I)V

    .line 333
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$7;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->finish()V

    .line 334
    return-void
.end method
