.class public Lcom/facebook/katana/service/method/SyncPhotoComments;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "SyncPhotoComments.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoComment;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 61
    iput-object p3, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->a:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->f:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->g:Ljava/util/Map;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/SyncPhotoComments;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/SyncPhotoComments;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/SyncPhotoComments;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/katana/service/method/SyncPhotoComments;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/service/method/SyncPhotoComments;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 69
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v0, Lcom/facebook/katana/service/method/PhotosGetComments;

    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->p:Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/PhotosGetComments;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Lcom/facebook/katana/service/method/PhotosCanComment;

    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->p:Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/PhotosCanComment;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;

    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->p:Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->a:Ljava/lang/String;

    new-instance v5, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;

    const/4 v4, 0x0

    invoke-direct {v5, p0, v4}, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;-><init>(Lcom/facebook/katana/service/method/SyncPhotoComments;B)V

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;->a()V

    .line 77
    return-void
.end method

.method public final h()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 84
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhotoComment;

    .line 86
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoComment;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v8

    .line 151
    :goto_1
    return-object v0

    .line 96
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    const-string v0, "user_id IN("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v6

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 100
    if-eqz v1, :cond_2

    move v1, v7

    .line 105
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 103
    :cond_2
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 107
    :cond_3
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->b:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/service/method/SyncPhotoComments$ConnectionsQuery;->a:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 112
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    const-string v0, "user_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 115
    const-string v0, "connection_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 117
    const-string v0, "display_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 119
    const-string v0, "user_image_url"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 122
    :cond_4
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 124
    invoke-interface {v8, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->USER:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_8

    move v5, v6

    .line 133
    :goto_4
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_6

    move v5, v7

    :goto_5
    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 137
    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->g:Ljava/util/Map;

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 143
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 145
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/facebook/katana/model/FacebookPhotoComment;

    .line 146
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoComment;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 147
    invoke-virtual {v1, v0}, Lcom/facebook/katana/model/FacebookPhotoComment;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_6

    :cond_6
    move v5, v6

    .line 133
    goto :goto_5

    :cond_7
    move-object v0, v8

    .line 151
    goto/16 :goto_1

    :cond_8
    move v5, v7

    goto :goto_4
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->h:Ljava/util/List;

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments;->i:Z

    return v0
.end method
