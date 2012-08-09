.class public Lcom/facebook/katana/util/TempFileManager;
.super Ljava/lang/Object;
.source "TempFileManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/facebook/katana/util/TempFileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/TempFileManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-static {}, Lcom/facebook/katana/util/TempFileManager;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-object v0

    .line 82
    :cond_0
    :try_start_0
    const-string v1, ".facebook_"

    const-string v2, ".jpg"

    invoke-static {}, Lcom/facebook/katana/util/TempFileManager;->d()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/facebook/katana/util/FileUtils;->a(Ljava/io/InputStream;Ljava/io/File;)V

    .line 84
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    sget-object v2, Lcom/facebook/katana/util/TempFileManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot add image file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lcom/facebook/katana/util/TempFileManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/facebook/katana/util/TempFileManager$1;

    invoke-direct {v0}, Lcom/facebook/katana/util/TempFileManager$1;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/katana/util/TempFileManager;->d()Ljava/io/File;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/TempFileManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/facebook/katana/util/TempFileManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static c()Z
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static d()Ljava/io/File;
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/facebook/katana/util/TempFileManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 37
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.facebook.katana/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method
