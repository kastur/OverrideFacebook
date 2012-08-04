.class Lcom/facebook/orca/server/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/orca/server/Operation;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/facebook/orca/server/Operation;->b:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/facebook/orca/server/Operation;->c:Landroid/os/Bundle;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/server/Operation;->b:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/server/Operation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/server/Operation;->c:Landroid/os/Bundle;

    return-object v0
.end method
