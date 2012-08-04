.class Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$2;
.super Ljava/lang/Object;
.source "MailboxMessagesActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$2;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$2;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    return-void

    .line 168
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
