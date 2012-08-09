.class public Lcom/facebook/orca/app/OrcaAppType;
.super Ljava/lang/Object;
.source "OrcaAppType.java"

# interfaces
.implements Lcom/facebook/orca/config/PlatformAppConfig;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/facebook/orca/app/OrcaAppType$Audience;

.field private final g:Lcom/facebook/orca/app/OrcaAppType$Product;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/app/OrcaAppType$Audience;Lcom/facebook/orca/app/OrcaAppType$Product;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaAppType;->a:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/facebook/orca/app/OrcaAppType;->b:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/facebook/orca/app/OrcaAppType;->c:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/facebook/orca/app/OrcaAppType;->d:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/facebook/orca/app/OrcaAppType;->e:Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lcom/facebook/orca/app/OrcaAppType;->f:Lcom/facebook/orca/app/OrcaAppType$Audience;

    .line 54
    iput-object p9, p0, Lcom/facebook/orca/app/OrcaAppType;->g:Lcom/facebook/orca/app/OrcaAppType$Product;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/facebook/orca/app/OrcaAppType$Audience;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->f:Lcom/facebook/orca/app/OrcaAppType$Audience;

    return-object v0
.end method

.method public final g()Lcom/facebook/orca/app/OrcaAppType$Product;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->g:Lcom/facebook/orca/app/OrcaAppType$Product;

    return-object v0
.end method
