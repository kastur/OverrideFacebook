.class public Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.super Ljava/lang/Object;
.source "AbstractOrcaServiceHandlerFilter.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler$Filter;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->a:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method protected A(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected B(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected C(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected D(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected E(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected F(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected G(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public final H(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0xa

    .line 22
    iget-object v0, p0, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string v2, "auth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->w(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    :goto_0
    return-object v0

    .line 27
    :cond_0
    :try_start_1
    const-string v2, "auth_sso"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->x(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto :goto_0

    .line 29
    :cond_1
    :try_start_2
    const-string v2, "login"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->v(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto :goto_0

    .line 31
    :cond_2
    :try_start_3
    const-string v2, "fetch_thread_list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto :goto_0

    .line 33
    :cond_3
    :try_start_4
    const-string v2, "fetch_more_threads"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto :goto_0

    .line 35
    :cond_4
    :try_start_5
    const-string v2, "fetch_thread"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto :goto_0

    .line 37
    :cond_5
    :try_start_6
    const-string v2, "queue_message"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->e(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto :goto_0

    .line 39
    :cond_6
    :try_start_7
    const-string v2, "send"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto :goto_0

    .line 41
    :cond_7
    :try_start_8
    const-string v2, "add_members"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto :goto_0

    .line 43
    :cond_8
    :try_start_9
    const-string v2, "create_thread"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->d(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 45
    :cond_9
    :try_start_a
    const-string v2, "register_push"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->z(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 47
    :cond_a
    :try_start_b
    const-string v2, "fetch_more_messages"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->u(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 49
    :cond_b
    :try_start_c
    const-string v2, "remove_member"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 51
    :cond_c
    :try_start_d
    const-string v2, "mark_thread"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 53
    :cond_d
    :try_start_e
    const-string v2, "delete_thread"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 55
    :cond_e
    :try_start_f
    const-string v2, "delete_messages"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 57
    :cond_f
    :try_start_10
    const-string v2, "modify_thread"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 59
    :cond_10
    :try_start_11
    const-string v2, "mark_folder_seen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 61
    :cond_11
    :try_start_12
    const-string v2, "save_draft"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->o(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 63
    :cond_12
    :try_start_13
    const-string v2, "pushed_message"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->q(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 65
    :cond_13
    :try_start_14
    const-string v2, "request_sms_confirmation_code"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->A(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 67
    :cond_14
    :try_start_15
    const-string v2, "confirm_phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->B(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 69
    :cond_15
    :try_start_16
    const-string v2, "get_app_info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 71
    :cond_16
    :try_start_17
    const-string v2, "update_user_settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->C(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 73
    :cond_17
    :try_start_18
    const-string v2, "analytics_upload"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->D(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 75
    :cond_18
    :try_start_19
    const-string v2, "unregister_push"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->y(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 77
    :cond_19
    :try_start_1a
    const-string v2, "read_receipt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->j(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 79
    :cond_1a
    :try_start_1b
    const-string v2, "delivered_receipt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->k(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 81
    :cond_1b
    :try_start_1c
    const-string v2, "chat_get_visibility"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->s(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 83
    :cond_1c
    :try_start_1d
    const-string v2, "chat_set_visiblity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->t(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 85
    :cond_1d
    :try_start_1e
    const-string v2, "push_trace_confirmation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->E(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 87
    :cond_1e
    :try_start_1f
    const-string v2, "auth_expire_session"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->F(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 89
    :cond_1f
    :try_start_20
    const-string v2, "fetch_all_contacts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;->G(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    .line 92
    :cond_20
    :try_start_21
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    move-result-object v0

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    throw v0
.end method

.method protected a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected j(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected k(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected o(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected q(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected s(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected t(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected u(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected v(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected w(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected x(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected y(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected z(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method
