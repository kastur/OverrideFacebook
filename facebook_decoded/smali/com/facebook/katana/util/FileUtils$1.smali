.class final Lcom/facebook/katana/util/FileUtils$1;
.super Ljava/lang/Thread;
.source "FileUtils.java"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:J

.field private synthetic c:Lcom/facebook/katana/util/FileUtils$deleteFilesCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/facebook/katana/util/FileUtils$deleteFilesCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/katana/util/FileUtils$1;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/facebook/katana/util/FileUtils$1;->b:J

    iput-object p4, p0, Lcom/facebook/katana/util/FileUtils$1;->c:Lcom/facebook/katana/util/FileUtils$deleteFilesCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    .line 74
    const-string v0, ""

    .line 75
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/katana/util/FileUtils$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 78
    if-eqz v6, :cond_5

    .line 79
    array-length v2, v6

    .line 80
    array-length v7, v6

    move v5, v3

    move v1, v3

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v8, v6, v5

    .line 82
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/facebook/katana/util/FileUtils$1;->b:J

    cmp-long v9, v9, v11

    if-gtz v9, :cond_0

    .line 83
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v13, v2

    move v2, v1

    move v1, v13

    .line 93
    :goto_2
    iget-object v5, p0, Lcom/facebook/katana/util/FileUtils$1;->c:Lcom/facebook/katana/util/FileUtils$deleteFilesCallback;

    if-eqz v5, :cond_3

    .line 94
    const-string v5, "deleted %d/%d from %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    sub-int v7, v1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    const/4 v1, 0x2

    iget-object v7, p0, Lcom/facebook/katana/util/FileUtils$1;->a:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    if-nez v2, :cond_2

    move v3, v4

    .line 98
    :cond_2
    if-nez v3, :cond_4

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(lastError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_3
    iget-object v1, p0, Lcom/facebook/katana/util/FileUtils$1;->c:Lcom/facebook/katana/util/FileUtils$deleteFilesCallback;

    invoke-interface {v1, v3, v0}, Lcom/facebook/katana/util/FileUtils$deleteFilesCallback;->a(ZLjava/lang/String;)V

    .line 103
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    move v1, v3

    move v2, v3

    goto :goto_2
.end method
