.class public Lcom/facebook/orca/users/IsMeUserAnEmployeeProvider;
.super Ljava/lang/Object;
.source "IsMeUserAnEmployeeProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/facebook/orca/common/util/TriState;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .parameter
        .annotation runtime Lcom/facebook/orca/annotations/MeUser;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/users/IsMeUserAnEmployeeProvider;->a:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method private b()Lcom/facebook/orca/common/util/TriState;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/users/IsMeUserAnEmployeeProvider;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 27
    if-nez v0, :cond_0

    .line 28
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    .line 30
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/orca/users/IsMeUserAnEmployeeProvider;->b()Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    return-object v0
.end method
