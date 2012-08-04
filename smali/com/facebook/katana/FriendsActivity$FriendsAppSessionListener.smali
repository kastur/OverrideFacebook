.class Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FriendsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/FriendsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/FriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/FriendsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;-><init>(Lcom/facebook/katana/FriendsActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/FriendsActivity;->a(IZ)V

    .line 172
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->d(Lcom/facebook/katana/FriendsActivity;)V

    .line 175
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a:Landroid/database/Cursor;

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v1}, Lcom/facebook/katana/FriendsActivity;->a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b(Landroid/database/Cursor;)V

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    const v2, 0x7f0b01fb

    invoke-virtual {v1, v2}, Lcom/facebook/katana/FriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 158
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 164
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    iget-object v0, v0, Lcom/facebook/katana/FriendsActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    iget-object v0, v0, Lcom/facebook/katana/FriendsActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/FriendsActivity;->a(IZ)V

    .line 198
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->e(Lcom/facebook/katana/FriendsActivity;)V

    .line 202
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b:Landroid/database/Cursor;

    .line 203
    if-eqz v0, :cond_2

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v1}, Lcom/facebook/katana/FriendsActivity;->a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a(Z)V

    .line 207
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v1}, Lcom/facebook/katana/FriendsActivity;->a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a_(Landroid/database/Cursor;)V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    const v2, 0x7f0b01fe

    invoke-virtual {v1, v2}, Lcom/facebook/katana/FriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
