.class final Lcom/facebook/katana/util/TempFileManager$1;
.super Landroid/os/AsyncTask;
.source "TempFileManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/io/File;)Ljava/lang/Object;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 53
    array-length v5, p0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v0, p0, v2

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 55
    invoke-static {}, Lcom/facebook/katana/util/TempFileManager;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Attempted to clean a non-directory "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    move v0, v1

    .line 60
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_0

    .line 61
    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long v7, v3, v7

    const-wide/32 v9, 0xea60

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 62
    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 60
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 49
    check-cast p1, [Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/katana/util/TempFileManager$1;->a([Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
