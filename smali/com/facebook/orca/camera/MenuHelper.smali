.class public Lcom/facebook/orca/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 2

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Lcom/facebook/orca/camera/ImageManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, -0x1

    .line 76
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x49b71b00

    div-float/2addr v0, v1

    .line 70
    float-to-int v0, v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {}, Lcom/facebook/orca/camera/MenuHelper;->a()I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/orca/camera/MenuHelper;->a(Landroid/app/Activity;I)V

    .line 38
    return-void
.end method

.method private static a(Landroid/app/Activity;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "checking"

    if-ne v0, v1, :cond_2

    .line 46
    sget v0, Lcom/facebook/orca/R$string;->camera_preparing_sd:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 55
    const/16 v1, 0x1388

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 57
    :cond_1
    return-void

    .line 48
    :cond_2
    sget v0, Lcom/facebook/orca/R$string;->camera_no_storage:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_3
    if-gtz p1, :cond_0

    .line 51
    sget v0, Lcom/facebook/orca/R$string;->camera_not_enough_space:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
