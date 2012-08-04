.class final Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MailboxMessagesActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$QueryHandler;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    .line 102
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$QueryHandler;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    packed-switch p1, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$QueryHandler;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0, p3}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;Landroid/database/Cursor;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
