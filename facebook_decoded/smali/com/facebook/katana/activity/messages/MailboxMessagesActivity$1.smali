.class Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$1;
.super Ljava/lang/Object;
.source "MailboxMessagesActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$1;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$1;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    .line 160
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
