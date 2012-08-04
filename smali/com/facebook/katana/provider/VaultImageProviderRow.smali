.class public final Lcom/facebook/katana/provider/VaultImageProviderRow;
.super Ljava/lang/Object;
.source "VaultImageProviderRow.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "image_hash"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    .line 37
    const-string v0, "image_fbid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->b:J

    .line 38
    const-string v0, "date_taken"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->c:J

    .line 39
    const-string v0, "upload_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->d:J

    .line 40
    const-string v0, "failure_count"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->e:I

    .line 41
    const-string v0, "upload_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    .line 42
    const-string v0, "shared"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->g:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->b:J

    .line 27
    iput-wide p4, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->c:J

    .line 28
    iput-wide p6, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->d:J

    .line 29
    iput v0, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->e:I

    .line 30
    iput p9, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    .line 31
    iput v0, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->g:I

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/katana/provider/VaultImageProviderRow;
    .locals 11
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 17
    invoke-static {p0}, Lcom/facebook/katana/provider/VaultImageProvider;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    .line 18
    new-instance v0, Lcom/facebook/katana/provider/VaultImageProviderRow;

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v9, 0x4

    move-object v1, p0

    move v10, v8

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/provider/VaultImageProviderRow;-><init>(Ljava/lang/String;JJJIII)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 47
    iget v1, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 68
    const-string v1, "image_hash"

    iget-object v2, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "image_fbid"

    iget-wide v2, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string v1, "date_taken"

    iget-wide v2, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v1, "upload_date"

    iget-wide v2, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    const-string v1, "failure_count"

    iget v2, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v1, "upload_state"

    iget v2, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v1, "shared"

    iget v2, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    const-string v0, "image_hash: %s, image_fbid, %d, upload_date: %d, date_taken: %d, failure_count: %d, upload_state: %d"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
