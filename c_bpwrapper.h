#ifndef __C_BPWRAPPER_H__
#define __C_BPWRAPPER_H__

typedef void*   CBPWrapperExceptionHandler;
#ifdef __cplusplus
extern "C"
{
#endif
CBPWrapperExceptionHandler newCBPWrapperExceptionHandler(void);

#ifdef __cplusplus
}
#endif

#endif  /* __C_BPWRAPPER_H__*/
