.class Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;
.super Landroid/os/AsyncTask;
.source "ContinuousImport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/method/ContinuousImport;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/method/ContinuousImport;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/method/ContinuousImport;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;-><init>(Lcom/facebook/katana/service/method/ContinuousImport;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/ContinuousImport;->h()V

    .line 403
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/ContinuousImport;->i()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 404
    :catch_0
    move-exception v0

    .line 406
    invoke-direct {p0}, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;->b()V

    .line 407
    throw v0

    .line 408
    :catch_1
    move-exception v0

    .line 410
    invoke-direct {p0}, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;->b()V

    .line 411
    const-string v1, "continuous import"

    const-string v2, "Continuous Import failed on SQL exception"

    invoke-static {v1, v2, v0, v3}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 413
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 420
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/ContinuousImport;->j()V

    .line 422
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-static {v0}, Lcom/facebook/katana/service/method/ContinuousImport;->a(Lcom/facebook/katana/service/method/ContinuousImport;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/ContinuousImport;->a(Landroid/content/Context;Z)V

    .line 423
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/facebook/katana/service/method/ContinuousImport;->c(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-static {v0}, Lcom/facebook/katana/service/method/ContinuousImport;->a(Lcom/facebook/katana/service/method/ContinuousImport;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/ObservedContactsProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/facebook/katana/service/method/ContinuousImport;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Counld not clear ContinuousImport DB while turning off ContinuousImport functionality"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/facebook/katana/service/method/ContinuousImport$ContinuousImportTask;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
