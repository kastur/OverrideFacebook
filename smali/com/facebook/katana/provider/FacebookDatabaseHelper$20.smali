.class Lcom/facebook/katana/provider/FacebookDatabaseHelper$20;
.super Ljava/lang/Object;
.source "FacebookDatabaseHelper.java"

# interfaces
.implements Lcom/facebook/katana/util/FileUtils$deleteFilesCallback;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/facebook/katana/provider/FacebookDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/facebook/katana/provider/FacebookDatabaseHelper;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$20;->b:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    iput-wide p2, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$20;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 678
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$20;->a:J

    sub-long/2addr v0, v2

    .line 679
    if-nez p1, :cond_0

    .line 680
    iget-object v2, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$20;->b:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-static {v2, p2}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Lcom/facebook/katana/provider/FacebookDatabaseHelper;Ljava/lang/String;)V

    .line 683
    :cond_0
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 684
    iget-object v2, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$20;->b:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Long file deletion operation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Lcom/facebook/katana/provider/FacebookDatabaseHelper;Ljava/lang/String;)V

    .line 687
    :cond_1
    return-void
.end method
