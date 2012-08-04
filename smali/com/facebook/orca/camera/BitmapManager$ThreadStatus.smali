.class Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# instance fields
.field public a:Lcom/facebook/orca/camera/BitmapManager$State;

.field public b:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/facebook/orca/camera/BitmapManager$State;->ALLOW:Lcom/facebook/orca/camera/BitmapManager$State;

    iput-object v0, p0, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;->a:Lcom/facebook/orca/camera/BitmapManager$State;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;->a:Lcom/facebook/orca/camera/BitmapManager$State;

    sget-object v1, Lcom/facebook/orca/camera/BitmapManager$State;->CANCEL:Lcom/facebook/orca/camera/BitmapManager$State;

    if-ne v0, v1, :cond_0

    .line 46
    const-string v0, "Cancel"

    .line 52
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thread state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;->a:Lcom/facebook/orca/camera/BitmapManager$State;

    sget-object v1, Lcom/facebook/orca/camera/BitmapManager$State;->ALLOW:Lcom/facebook/orca/camera/BitmapManager$State;

    if-ne v0, v1, :cond_1

    .line 48
    const-string v0, "Allow"

    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "?"

    goto :goto_0
.end method
