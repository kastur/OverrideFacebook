.class Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter$1;
.super Ljava/lang/Object;
.source "MailboxThreadsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/CheckboxAdapterListener;

.field private synthetic b:Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 102
    check-cast p1, Landroid/widget/CheckBox;

    .line 103
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter$1;->b:Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;->a(Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter$1;->a:Lcom/facebook/katana/CheckboxAdapterListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter$1;->b:Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;->a(Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    invoke-interface {v1}, Lcom/facebook/katana/CheckboxAdapterListener;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter$1;->b:Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;->a(Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
