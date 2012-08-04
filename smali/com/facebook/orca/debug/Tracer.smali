.class public Lcom/facebook/orca/debug/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/debug/ThreadTrace;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/debug/Tracer;->a:J

    .line 14
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;
    .locals 2
    .parameter

    .prologue
    .line 17
    new-instance v0, Lcom/facebook/orca/debug/Tracer;

    sget-object v1, Lcom/facebook/orca/debug/TraceEvent$Type;->START:Lcom/facebook/orca/debug/TraceEvent$Type;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/debug/Tracer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/facebook/orca/debug/Tracer;

    sget-object v1, Lcom/facebook/orca/debug/TraceEvent$Type;->START:Lcom/facebook/orca/debug/TraceEvent$Type;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/debug/Tracer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 37
    invoke-static {}, Lcom/facebook/orca/debug/ThreadTrace;->a()V

    .line 38
    return-void
.end method

.method public static a(J)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/facebook/orca/debug/ThreadTrace;->a(J)V

    .line 34
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    invoke-virtual {v0}, Lcom/facebook/orca/debug/ThreadTrace;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-static {p0}, Lcom/facebook/orca/debug/ThreadTrace;->a(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 4
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    iget-wide v1, p0, Lcom/facebook/orca/debug/Tracer;->a:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/debug/ThreadTrace;->a(JLjava/lang/Long;)J

    .line 54
    return-void
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    iget-wide v1, p0, Lcom/facebook/orca/debug/Tracer;->a:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/debug/ThreadTrace;->a(JLjava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
