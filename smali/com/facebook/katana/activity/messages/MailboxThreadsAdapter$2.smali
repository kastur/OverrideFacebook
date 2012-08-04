.class Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter$2;
.super Ljava/lang/Object;
.source "MailboxThreadsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 120
    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter$2;->a:Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;->b(Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;)Lcom/facebook/katana/activity/messages/UserSelectionListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/facebook/katana/activity/messages/UserSelectionListener;->a(J)V

    .line 121
    return-void
.end method
