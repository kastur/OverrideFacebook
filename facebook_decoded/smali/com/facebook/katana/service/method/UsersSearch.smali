.class public Lcom/facebook/katana/service/method/UsersSearch;
.super Lcom/facebook/katana/service/method/FqlGetUsersProfile;
.source "UsersSearch.java"


# static fields
.field private static a:I


# instance fields
.field private final f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/facebook/katana/service/method/UsersSearch;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;IILcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {p5, p6, p7}, Lcom/facebook/katana/service/method/UsersSearch;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/facebook/katana/model/FacebookUser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p8

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/service/method/UsersSearch;->g:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/service/method/UsersSearch;->h:I

    .line 63
    iput p6, p0, Lcom/facebook/katana/service/method/UsersSearch;->g:I

    .line 64
    iput-object p5, p0, Lcom/facebook/katana/service/method/UsersSearch;->i:Ljava/lang/String;

    .line 65
    iput p3, p0, Lcom/facebook/katana/service/method/UsersSearch;->f:I

    .line 66
    sput p3, Lcom/facebook/katana/service/method/UsersSearch;->a:I

    .line 67
    return-void
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "contains("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-static {v0, p0}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ") LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/UsersSearch;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/UsersSearch;->a(Ljava/util/Map;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/Map;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/katana/service/method/UsersSearch;->f:I

    sget v1, Lcom/facebook/katana/service/method/UsersSearch;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/service/method/UsersSearch;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 114
    iget v0, p0, Lcom/facebook/katana/service/method/UsersSearch;->g:I

    if-nez v0, :cond_2

    .line 115
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->k:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 125
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v3, v1, [Landroid/content/ContentValues;

    .line 126
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookUser;

    .line 127
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v3, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 131
    const-string v6, "user_id"

    iget-wide v7, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v6, "display_name"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookUser;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v6, "user_image_url"

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :cond_3
    :try_start_2
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->k:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 159
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/katana/service/method/UsersSearch;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/service/method/UsersSearch;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-super {p0}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->a()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/method/UsersSearch$DeleteThread;

    invoke-direct {v0, p0}, Lcom/facebook/katana/service/method/UsersSearch$DeleteThread;-><init>(Lcom/facebook/katana/service/method/UsersSearch;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/UsersSearch$DeleteThread;->start()V

    goto :goto_0
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 84
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/UsersSearch;->h()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/service/method/UsersSearch;->a(Ljava/util/Map;)V

    .line 85
    return-void
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/facebook/katana/service/method/UsersSearch;->g:I

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method
