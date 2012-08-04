.class Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$5;
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
    .line 220
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$5;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$5;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    .line 227
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$5;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 228
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$5;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 230
    return-void
.end method
