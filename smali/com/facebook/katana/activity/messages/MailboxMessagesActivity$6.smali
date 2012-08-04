.class Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$6;
.super Ljava/lang/Object;
.source "MailboxMessagesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$6;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$6;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method
