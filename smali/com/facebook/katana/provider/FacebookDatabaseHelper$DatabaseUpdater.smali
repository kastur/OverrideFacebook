.class abstract Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.super Ljava/lang/Object;
.source "FacebookDatabaseHelper.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->c:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b:Ljava/lang/String;

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->a:J

    .line 137
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->a:J

    sub-long/2addr v0, v2

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->c()V

    .line 121
    invoke-virtual {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 122
    return-void
.end method
