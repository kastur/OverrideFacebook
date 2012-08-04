.class Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;
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
    .line 175
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    iget-object v3, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v3}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v4}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "tid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;J)J

    .line 184
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const v3, 0x7f08013e

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const v3, 0x7f08013f

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v3}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->c(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    .line 189
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 184
    goto :goto_0

    :cond_2
    move v1, v2

    .line 185
    goto :goto_1
.end method
