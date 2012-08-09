.class public Lcom/facebook/katana/platform/PlatformFastTrack;
.super Ljava/lang/Object;
.source "PlatformFastTrack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 26
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v2, v6

    const-string v0, "lookup"

    aput-object v0, v2, v7

    const-string v3, "account_type=\'com.facebook.auth.login\' AND account_name=? AND sourceid=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 34
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v2, v3, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 38
    if-eqz v1, :cond_0

    .line 39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_0
    :goto_0
    return-object v5

    .line 38
    :cond_1
    if-eqz v1, :cond_0

    .line 39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    move-object v0, p0

    check-cast v0, Landroid/widget/QuickContactBadge;

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/facebook/katana/platform/PlatformFastTrack;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 60
    array-length v1, p4

    if-lez v1, :cond_0

    .line 61
    invoke-virtual {v0, p4}, Landroid/widget/QuickContactBadge;->setExcludeMimes([Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method
