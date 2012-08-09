.class Lcom/facebook/katana/activity/messages/MessageComposeActivity$2;
.super Ljava/lang/Object;
.source "MessageComposeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$2;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->f:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 122
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$2;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    sget-object v2, Lcom/facebook/katana/DropdownFriendsAdapter$FriendsQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$2;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)Lcom/facebook/katana/DropdownFriendsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/DropdownFriendsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 126
    :cond_0
    return-void
.end method
