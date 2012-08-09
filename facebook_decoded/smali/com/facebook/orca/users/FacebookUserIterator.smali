.class public Lcom/facebook/orca/users/FacebookUserIterator;
.super Ljava/lang/Object;
.source "FacebookUserIterator.java"


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/users/UserSerialization;

.field private c:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fbid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "first_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "email_addresses"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "phone_numbers"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pic_big"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pic_square"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pic_crop"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rank"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_pushable"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "birthday_month"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "birthday_day"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "birthday_year"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/users/FacebookUserIterator;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/users/UserSerialization;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    iput-object p2, p0, Lcom/facebook/orca/users/FacebookUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "facebook_users"

    sget-object v2, Lcom/facebook/orca/users/FacebookUserIterator;->d:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    .line 54
    return-void
.end method

.method public final a(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "facebook_users"

    sget-object v2, Lcom/facebook/orca/users/FacebookUserIterator;->d:[Ljava/lang/String;

    const-string v7, "rank DESC"

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    .line 59
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v0, "fbid IN ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "SELECT DISTINCT fbid FROM facebook_users_name_lookup "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v0, "WHERE normalized_name GLOB "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/orca/common/names/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*\') "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 69
    const-string v2, "facebook_users"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->a:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/facebook/orca/users/FacebookUserIterator;->d:[Ljava/lang/String;

    const-string v7, "rank DESC"

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    .line 73
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-static {p1}, Lcom/facebook/orca/users/UserKey;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    const-string v2, "fbid IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v0}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 82
    const-string v2, "facebook_users"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->a:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/facebook/orca/users/FacebookUserIterator;->d:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    .line 85
    return-void
.end method

.method public final b()Lcom/facebook/orca/users/User;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x8

    const/16 v8, 0xa

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/users/UserSerialization;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 98
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/users/UserSerialization;->c(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 101
    sget-object v1, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    .line 102
    iget-object v4, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 103
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    sget-object v1, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    .line 110
    :cond_1
    :goto_0
    new-instance v4, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v4}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v5, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    iget-object v6, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/users/UserBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/users/UserBuilder;->a(F)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    new-instance v2, Lcom/facebook/orca/users/Birthday;

    iget-object v3, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/16 v5, 0xb

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget-object v5, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/16 v6, 0xc

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/orca/users/Birthday;-><init>(III)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Birthday;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 126
    :cond_2
    return-object v0

    .line 106
    :cond_3
    sget-object v1, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    .line 134
    :cond_0
    return-void
.end method
