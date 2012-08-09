.class public Lcom/facebook/orca/debug/MemoryUsageDumper;
.super Ljava/lang/Object;
.source "MemoryUsageDumper.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/orca/images/ImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "orca:MemoryUsageDumper"

    sput-object v0, Lcom/facebook/orca/debug/MemoryUsageDumper;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/images/ImageCache;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/orca/debug/MemoryUsageDumper;->b:Lcom/facebook/orca/images/ImageCache;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/debug/MemoryUsageDumper;)Lcom/facebook/orca/images/ImageCache;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/facebook/orca/debug/MemoryUsageDumper;->b:Lcom/facebook/orca/images/ImageCache;

    return-object v0
.end method

.method protected static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    const-string v2, "dumpsys"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v2, "meminfo"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 60
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    sget-object v0, Lcom/facebook/orca/debug/MemoryUsageDumper;->a:Ljava/lang/String;

    const-string v3, "Retrieving dumpsys meminfo output..."

    invoke-static {v0, v3}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    sget-object v2, Lcom/facebook/orca/debug/MemoryUsageDumper;->a:Ljava/lang/String;

    const-string v3, "DumpSysCollector.meminfo could not retrieve data"

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/facebook/orca/debug/MemoryUsageDumper;->a:Ljava/lang/String;

    return-object v0
.end method
