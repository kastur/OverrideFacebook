.class public Lcom/facebook/orca/debug/OrcaLogImpl;
.super Ljava/lang/Object;
.source "OrcaLogImpl.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;
.implements Lcom/facebook/orca/debug/OrcaLog;


# static fields
.field private static final b:Lcom/facebook/orca/common/util/RateLimiter;

.field private static final h:Ljava/text/SimpleDateFormat;


# instance fields
.field private final a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private c:Ljava/io/File;

.field private d:Ljava/io/Writer;

.field private e:J

.field private f:Z

.field private g:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/orca/common/util/RateLimiter;

    invoke-static {}, Lcom/facebook/orca/common/util/SystemClock;->b()Lcom/facebook/orca/common/util/SystemClock;

    move-result-object v1

    const/4 v2, 0x5

    sget-wide v3, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/orca/common/util/RateLimiter;-><init>(Lcom/facebook/orca/common/util/Clock;IJ)V

    sput-object v0, Lcom/facebook/orca/debug/OrcaLogImpl;->b:Lcom/facebook/orca/common/util/RateLimiter;

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "[HH:mm:ss.SSS]: "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/debug/OrcaLogImpl;->h:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/debug/OrcaLogImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/debug/OrcaLogImpl;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->B:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->f:Z

    .line 82
    return-void
.end method

.method private static d()Ljava/io/File;
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/io/File;

    const-string v2, "/Android/data/com.facebook.orca/files/log/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private e()V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->d:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 235
    iget-wide v2, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/facebook/orca/debug/OrcaLogImpl;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->d:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->c:Ljava/io/File;

    .line 293
    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->d:Ljava/io/Writer;

    .line 294
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->c:Ljava/io/File;

    .line 293
    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->d:Ljava/io/Writer;

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->c:Ljava/io/File;

    .line 293
    iput-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->d:Ljava/io/Writer;

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/diagnostics/LogFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/debug/OrcaLogImpl;->e()V

    .line 243
    invoke-static {}, Lcom/facebook/orca/debug/OrcaLogImpl;->d()Ljava/io/File;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 265
    :goto_0
    monitor-exit p0

    return-object v0

    .line 248
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 250
    array-length v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    .line 252
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "orca.log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 253
    invoke-static {v6}, Lcom/facebook/orca/common/diagnostics/LogFileUtils;->a(Ljava/io/File;)Lcom/facebook/orca/common/diagnostics/LogFile;

    move-result-object v7

    .line 256
    invoke-virtual {v7}, Lcom/facebook/orca/common/diagnostics/LogFile;->b()Ljava/util/Date;

    move-result-object v8

    .line 257
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/32 v10, 0x2932e00

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 259
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 251
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 264
    :cond_4
    :try_start_2
    invoke-static {v0}, Lcom/facebook/orca/common/diagnostics/LogFileUtils;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/facebook/orca/debug/OrcaLogImpl$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/debug/OrcaLogImpl$1;-><init>(Lcom/facebook/orca/debug/OrcaLogImpl;)V

    iput-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/debug/OrcaLogImpl;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 77
    invoke-direct {p0}, Lcom/facebook/orca/debug/OrcaLogImpl;->c()V

    .line 78
    return-void
.end method
