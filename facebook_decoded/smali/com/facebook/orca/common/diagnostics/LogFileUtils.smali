.class public Lcom/facebook/orca/common/diagnostics/LogFileUtils;
.super Ljava/lang/Object;
.source "LogFileUtils.java"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/common/diagnostics/LogFileUtils;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/facebook/orca/common/diagnostics/LogFile;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 27
    const-string v2, "-"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 28
    array-length v1, v3

    if-eq v1, v4, :cond_0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    :try_start_0
    const-string v1, "UNKNOWN"

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, v0

    .line 33
    :goto_1
    sget-object v1, Lcom/facebook/orca/common/diagnostics/LogFileUtils;->a:Ljava/text/SimpleDateFormat;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 34
    new-instance v1, Lcom/facebook/orca/common/diagnostics/LogFile;

    invoke-direct {v1, p0, v3, v2}, Lcom/facebook/orca/common/diagnostics/LogFile;-><init>(Ljava/io/File;Ljava/util/Date;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_1

    .line 36
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/diagnostics/LogFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/orca/common/diagnostics/LogFileUtils$1;

    invoke-direct {v0}, Lcom/facebook/orca/common/diagnostics/LogFileUtils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    return-void
.end method
