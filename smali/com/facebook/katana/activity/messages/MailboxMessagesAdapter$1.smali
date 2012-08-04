.class Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter$1;
.super Ljava/lang/Object;
.source "MailboxMessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter$1;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 74
    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter$1;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;->a(Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;)Lcom/facebook/katana/activity/messages/UserSelectionListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/facebook/katana/activity/messages/UserSelectionListener;->a(J)V

    .line 75
    return-void
.end method
