.class Lcom/facebook/katana/activity/messages/MessageComposeActivity$1;
.super Ljava/lang/Object;
.source "MessageComposeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ui/MailAutoCompleteTextView;

.field private synthetic b:Lcom/facebook/katana/activity/messages/MessageComposeActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Lcom/facebook/katana/ui/MailAutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$1;->b:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    iput-object p2, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$1;->a:Lcom/facebook/katana/ui/MailAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$1;->b:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)Lcom/facebook/katana/DropdownFriendsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/katana/DropdownFriendsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 98
    const-string v1, "user_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 100
    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    const-string v4, "user_image_url"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    iget-object v6, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$1;->b:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v6, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Lcom/facebook/katana/model/FacebookProfile;)V

    .line 106
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$1;->a:Lcom/facebook/katana/ui/MailAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/MailAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method
