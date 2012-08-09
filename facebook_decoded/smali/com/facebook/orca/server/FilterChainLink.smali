.class public Lcom/facebook/orca/server/FilterChainLink;
.super Ljava/lang/Object;
.source "FilterChainLink.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


# instance fields
.field private final a:Lcom/facebook/orca/server/OrcaServiceHandler$Filter;

.field private final b:Lcom/facebook/orca/server/OrcaServiceHandler;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/facebook/orca/server/FilterChainLink;->a:Lcom/facebook/orca/server/OrcaServiceHandler$Filter;

    .line 12
    iput-object p2, p0, Lcom/facebook/orca/server/FilterChainLink;->b:Lcom/facebook/orca/server/OrcaServiceHandler;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/orca/server/FilterChainLink;->a:Lcom/facebook/orca/server/OrcaServiceHandler$Filter;

    iget-object v1, p0, Lcom/facebook/orca/server/FilterChainLink;->b:Lcom/facebook/orca/server/OrcaServiceHandler;

    invoke-interface {v0, p1, v1}, Lcom/facebook/orca/server/OrcaServiceHandler$Filter;->H(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method
